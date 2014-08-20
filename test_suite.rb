tests = [

]

t = Time.now
name = t.strftime("%Y-%m-%d-%H-%M")
`git pull`
`mkdir output/#{name}`

tests.each do |test|
	`cucumber features/#{test}.feature -f html -o output/#{name}/#{test}.html`
end

`git add output/#{name}`
`git commit output -m "test results for #{name} uploaded"`
`git push`