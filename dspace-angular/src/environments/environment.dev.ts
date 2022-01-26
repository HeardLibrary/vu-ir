export const environment = {
  /**
   * TODO add the sections from environment.common.ts you want to override here
   * e.g.
   * rest: {
   *   host: 'rest.api',
   *   nameSpace: '/rest',
   * }
   */


// The "ui" section defines where you want Node.js to run/respond. It often is a *localhost* (non-public) URL, especially if you are using a Proxy.
  // In this example, we are setting up our UI to just use localhost, port 4000.
  // This is a common setup for when you want to use Apache or Nginx to handle HTTPS and proxy requests to Node on port 4000
  ui: {
      ssl: false,
      host: 'localhost',
      port: 4000,
      // NOTE: Space is capitalized because 'namespace' is a reserved string in TypeScript
      nameSpace: '/'
  },
  // This example is valid if your Backend is publicly available at https://api.mydspace.edu/server/
  // The REST settings MUST correspond to the primary URL of the backend. Usually, this means they must be kept in sync
  // with the value of "dspace.server.url" in the backend's local.cfg
  rest: {
      ssl: true,
      host: 'dev-irbe.library.vanderbilt.edu',
      port: 443,
      // NOTE: Space is capitalized because 'namespace' is a reserved string in TypeScript
      nameSpace: '/server'
  },

// In this example, we only show one theme enabled. It's possible to enable multiple (see below note)
  themes: [
   {
      name: 'vudspace7'
   }
		]
};
