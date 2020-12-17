.class Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference$TextClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "FaceOpenRaiseuptipsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextClickSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference$TextClickSpan;->this$0:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference$TextClickSpan;->this$0:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    invoke-static {p0}, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;->access$100(Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 109
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 110
    iget-object p0, p0, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference$TextClickSpan;->this$0:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 p0, 0x0

    .line 111
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
