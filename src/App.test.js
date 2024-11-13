import { render, screen } from "@testing-library/react";
import App from "./App";

test("renders SHOW button", () => {
  render(<App />);
  const buttonElement = screen.getByText(/SHOW/i);
  expect(buttonElement).toBeInTheDocument();
});
