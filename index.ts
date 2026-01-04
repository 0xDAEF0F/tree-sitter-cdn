import { Hono } from "hono";
import { cors } from "hono/cors";

const app = new Hono();
const BASE_DIR = "/Users/ale/parser-cdn";

app.use("*", cors());

// Serve at both /parsers/* and /tree-sitter/parsers/* paths
app.get("/parsers/*", async (c) => {
  const path = c.req.path;
  console.log(`[CDN] Request: ${path}`);
  const filePath = `${BASE_DIR}${path}`;
  const file = Bun.file(filePath);

  if (!(await file.exists())) {
    console.log(`[CDN] Not found: ${filePath}`);
    return c.text("Not found", 404);
  }

  console.log(`[CDN] Serving: ${filePath}`);
  return new Response(file);
});

app.get("/queries/*", async (c) => {
  const path = c.req.path;
  console.log(`[CDN] Request: ${path}`);
  const filePath = `${BASE_DIR}${path}`;
  const file = Bun.file(filePath);

  if (!(await file.exists())) {
    console.log(`[CDN] Not found: ${filePath}`);
    return c.text("Not found", 404);
  }

  console.log(`[CDN] Serving: ${filePath}`);
  return new Response(file);
});

// Also serve at /tree-sitter/* for local path compatibility
app.get("/tree-sitter/*", async (c) => {
  const path = c.req.path;
  console.log(`[CDN] Request: ${path}`);
  const filePath = `${BASE_DIR}${path}`;
  const file = Bun.file(filePath);

  if (!(await file.exists())) {
    console.log(`[CDN] Not found: ${filePath}`);
    return c.text("Not found", 404);
  }

  console.log(`[CDN] Serving: ${filePath}`);
  return new Response(file);
});

app.get("/", (c) => {
  return c.json({
    name: "Parser CDN",
    endpoints: {
      parsers: "/parsers/tree-sitter-{language}.wasm",
      queries: "/queries/{language}/highlights.scm",
      local: "/tree-sitter/parsers/tree-sitter-{language}.wasm",
    },
  });
});

export default {
  port: 3333,
  fetch: app.fetch,
};
