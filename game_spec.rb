require "./spec_helper"

describe Game do
    it "deve inicializar numero de pinos com 10" do
        expect(subject.pinos).to be_eql 10
    end

    describe "#play" do
        it "deve inicializar com os pinos derrubados como zero" do
            expect(subject.pinos_derrubados).to be_zero
        end

        it "faz um strike" do
            expect(subject.play(10)).to be_eql 20
        end

        context "quando o jogador derruba 10 pinos em duas jogadas" do
            it "faz um spare 5 5" do
                subject.play(5)
                expect(subject.play(5)).to be_eql 10
            end

            it "faz um spare 0 10" do
                subject.play(0)
                expect(subject.play(10)).to be_eql 10
            end
        end

        context "quando o jogador não derruba todos os pinos" do
            it "ganha pontos de acordo com os pinos derrubados" do
                subject.play(1)
                expect(subject.play(1)).to be_eql 2
            end
        end
     end

    context "with alguma coisa" do
        let!(:game) { Game.new }
        # Game.create! name: "nome"
        it "testando a classe" do
        end
    end
end
