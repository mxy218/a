.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;
.super Landroid/text/style/URLSpan;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportPageLearnMoreSpan"
.end annotation


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    .line 130
    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->mFragment:Landroidx/fragment/app/Fragment;

    .line 132
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->mUriString:Ljava/lang/String;

    return-void
.end method

.method public static linkify(Landroid/text/Spannable;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 11

    .line 159
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/Annotation;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 160
    array-length v1, v0

    :goto_e
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 161
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 162
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 163
    invoke-virtual {v3}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 164
    new-instance v6, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;

    invoke-direct {v6, p1, p2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 166
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/16 v3, 0x21

    .line 167
    invoke-interface {p0, v6, v4, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_37
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 137
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_14

    .line 139
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->mUriString:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_14
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 2

    .line 146
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x0

    .line 148
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
