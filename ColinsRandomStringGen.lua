--made by: DarkMod
--https://forums.coronalabs.com/topic/14032-very-simple-string-encryption-decryption/

[lua=auto:0]local function convert( chars, dist, inv )
return string.char( ( string.byte( chars ) - 32 + ( inv and -dist or dist ) ) % 95 + 32 )
end

local function crypt(str,k,inv)
local enc= "";
for i=1,#str do
if(#str-k[5] >= i or not inv)then
for inc=0,3 do
if(i%4 == inc)then
enc = enc .. convert(string.sub(str,i,i),k[inc+1],inv);
break;
end
end
end
end
if(not inv)then
for i=1,k[5] do
enc = enc .. string.char(math.random(32,126));
end
end
return enc;
end

local enc1 = {29, 58, 93, 28, 27};
local str = "This is an encrypted string.";
local crypted = crypt(str,enc1)
print("Encryption: " .. crypted);
print("Decryption: " .. crypt(crypted,enc1,true));

-- returns: 
-- Encryption: /f&1Zg0=%*JbV>Z^Ik!p=B@'7cHMY<
-- Decryption: This is an encrypted string. 
  
  
