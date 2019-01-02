#tag Module
Protected Module GraphixTools
	#tag Method, Flags = &h0
		Function ResizePicture(Extends p as Picture, maxWidth as Integer, maxHeight as Integer) As Picture
		  ' Calculate the scale ratio
		  
		  dim ratio as Double = min( maxHeight/p.height, maxWidth/p.width)
		  
		  ' Create a new picture to return
		  dim newPic as new Picture( p.width * ratio, p.height * ratio )
		  
		  ' Draw picture in the new size
		  newPic.graphics.DrawPicture( p, 0, 0, newPic.width, newPic.height, 0, 0, p.width, p.height)
		  
		  return newPic
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
