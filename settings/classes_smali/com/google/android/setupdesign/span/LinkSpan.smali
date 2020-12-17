.class public Lcom/google/android/setupdesign/span/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;,
        Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/setupdesign/span/LinkSpan;->id:Ljava/lang/String;

    return-void
.end method

.method private dispatchClick(Landroid/view/View;)Z
    .registers 3

    .line 103
    instance-of v0, p1, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    if-eqz v0, :cond_c

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_1d

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/span/LinkSpan;->getLegacyListenerFromContext(Landroid/content/Context;)Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 109
    invoke-interface {p1, p0}, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;->onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method private getLegacyListenerFromContext(Landroid/content/Context;)Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    :goto_0
    instance-of p0, p1, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;

    if-eqz p0, :cond_7

    .line 122
    check-cast p1, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;

    return-object p1

    .line 123
    :cond_7
    instance-of p0, p1, Landroid/content/ContextWrapper;

    if-eqz p0, :cond_12

    .line 127
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/google/android/setupdesign/span/LinkSpan;->id:Ljava/lang/String;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/span/LinkSpan;->dispatchClick(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 85
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_17

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_17

    :cond_10
    const-string p0, "LinkSpan"

    const-string v0, "Dropping click event. No listener attached."

    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_17
    :goto_17
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_2b

    .line 94
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 95
    instance-of p1, p0, Landroid/text/Spannable;

    if-eqz p1, :cond_2b

    .line 96
    check-cast p0, Landroid/text/Spannable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2b
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 2

    .line 136
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x0

    .line 137
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
