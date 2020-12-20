/*
Copyright 2020 Florian Schuster

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

module arbiter (
	input req_0,		// Request for device #0
	input req_1,		// Request for device #1
	input reset,		// Reset
	input clk,			// Clock
	output reg gnt_0,		// Grant device #0 
	output reg gnt_1		// Grant device #1
);


	always @ (posedge clk) begin

		if (reset) begin
			gnt_0 <= 0;
			gnt_1 <= 0;
		
		end else if (req_0) begin
			gnt_0 <= 1;
			gnt_1 <= 0;
		end else if (req_1) begin
			gnt_0 <= 0;
			gnt_1 <= 1;
		end

	end

endmodule
