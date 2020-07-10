#encoding: utf-8
require "spec_helper"

describe String do
  describe "#<<" do
    example "うんこ", :unko do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end

    example "nilの追加" do
      pending("調査中")
      s = "ABC"
      s << nil
      binding.pry
      expect(s.size).to eq(4)
    end

    xexample "nilの追加2" do
      s = "ABC"
      s << nil
      expect(s.size).to eq(4)
    end

    example "nilは追加できないよ" do
      s = "ABC"
      expect { s << nil }.to raise_error(TypeError)
    end
  end
end
