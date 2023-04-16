import { render, screen } from "@testing-library/react";
import Navbar from "./Navbar";

describe("Navbar", () => {
  test("should render Navbar", () => {
    render(<Navbar />);
    expect(screen.getByTestId("navbar"));
  });
});
