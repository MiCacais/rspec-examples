require 'student'
require 'course'

#um stub força uma resposta específica para um determinado método para um objeto colaborador

describe 'Stub' do
    it '#has_finished?' do
        student = Student.new
        course = Course.new

        allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)
        course_finished = student.has_finished?(course)
        expect(course_finished).to be_truthy
    end

    it 'Argumentos dinâmicos' do
        student = Student.new

        allow(student).to receive(:foo) do |arg|
            if arg == :hello
                "Olá"
            elseif arg == :hi
                "Hi"
            end
        end
    end

    it 'Qualquer instância de classe' do
        student = Student.new
        other_student = Student.new

        allow_any_instance_of(Student).to receive(:bar).and_return(true)

        expect(student.bar).to be_truthy
        expect(other_student.bar).to be_truthy
    end

    it 'Error' do
        student = Student.new

        allow(student).to receive(:bar).and_raise(RuntimeError)

        expect{student.bar}.to raise_error(RuntimeError)
    end
end