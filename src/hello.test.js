import { render, screen } from "@testing-library/react"
import App from "./App"

test("check_the text_coad",()=>{
    render(<App/>)
    let test_string=screen.getByText("hello")
    expect(test_string).toBeInTheDocument()
})

