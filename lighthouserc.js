module.exports = {
  ci: {
    collect: {
      url: ["http://localhost:3000/"],
      startServerCommand: "yarn start",
      settings: { chromeFlags: "--no-sandbox" },
      numberOfRuns: 1,
    },
  },
};
