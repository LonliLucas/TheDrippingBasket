export const Buttons = function () {
  return (
    <div className="button-container">
      <button onClick={() => window.open("https://wanderersguide.app/campaign/2041", "_blank", "noopener,noreferrer")}>
        <span className="transition"></span>
        <span className="gradient"></span>
        <span className="label">Wanderer's Guide</span>
      </button>
      <button onClick={() => window.open("https://foundry.brich.one/", "_blank", "noopener,noreferrer")}>
        <span className="transition"></span>
        <span className="gradient"></span>
        <span className="label">Foundry</span>
      </button>
      <button onClick={() => window.open("https://example.com", "_blank", "noopener,noreferrer")}>
        <span className="transition"></span>
        <span className="gradient"></span>
        <span className="label">Button</span>
      </button>
    </div>
  );
};
