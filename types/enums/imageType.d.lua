---@meta ImageType
---@enum ImageType
ImageType = {
	---The image is an asset, `ImageID` is an asset ID.
	Asset = 0,
	---The image is an asset's thumbnail. `ImageID` is an asset ID.
	AssetThumbnail = 1,
	---The image is a place's thumbnail. `ImageID` is a place's thumbnail ID.
	---
	---This does not work with place IDs. You must use the Polytoria API (`/v1/places/{placeID}/media`) to get a place's thumbnail IDs.
	PlaceThumbnail = 2,
	---The image is a user's entire avatar. `ImageID` is a user ID.
	UserAvatar = 3,
	---The image is a user's avatar headshot. `ImageID` is a user ID.
	UserAvatarHeadshot = 4,
	---The image is the icon of a guild. `ImageID` is a guild ID.
	GuildIcon = 5,
}