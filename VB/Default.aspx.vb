Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
        ASPxPageControl1.ActiveTabIndex = 1
    End Sub
    Protected Sub ASPxCardView1_FocusedCardChanged(ByVal sender As Object, ByVal e As EventArgs)
        Dim card As Integer = ASPxCardView1.FocusedCardIndex
        Dim key As Object = ASPxCardView1.GetCardValues(card, ASPxCardView1.KeyFieldName)
        Session("CategoryID") = key
    End Sub
End Class