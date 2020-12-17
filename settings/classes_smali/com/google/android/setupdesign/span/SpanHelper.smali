.class public Lcom/google/android/setupdesign/span/SpanHelper;
.super Ljava/lang/Object;
.source "SpanHelper.java"


# direct methods
.method public static varargs replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8

    .line 31
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 32
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 33
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 34
    array-length p1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, p1, :cond_18

    aget-object v4, p2, v3

    .line 35
    invoke-interface {p0, v4, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method
