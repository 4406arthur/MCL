	if(p2_rdy) begin
		if(p2_btn) begin
			p2_rdy=0;
			p2_idle=counter_max;
			p2_power=0;
			for(p2_idx=5;p2_idx<=9;p2_idx=p2_idx+1) begin
				p2_zone[p2_idx]=0;
				if(p2_power<3) begin
					if(sw[p2_idx])begin
						p2_zone[p2_idx]=1;
						p2_power=p2_power+1;
					end
				end
			end
			
			for(p2_idx=5;p2_idx<=9;p2_idx=p2_idx+1) begin
				if(position[p2_idx]==1 && p2_zone[p2_idx]==1) begin
					direction = 1;
					sel=0;
					halt=0;
				end
			end
		end
	end	else begin
		if(p2_idle==0) begin
			p2_rdy=1;
		end else begin
			p2_idle=p2_idle-1;
		end
	end

end

endmodule
