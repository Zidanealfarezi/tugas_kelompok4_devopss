import { render, screen } from "@testing-library/react";
import App from "./App";

test("renders a button with text SHOW", () => {
  render(<App />);
  const buttonElement = screen.getByText(/show/i); // Mencari tombol dengan teks SHOW
  expect(buttonElement).toBeInTheDocument();
});
