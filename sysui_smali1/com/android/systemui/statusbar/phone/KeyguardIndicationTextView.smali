.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Landroid/widget/TextView;
.source "KeyguardIndicationTextView.java"


# instance fields
.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public switchIndication(I)V
    .registers 3

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;)V
    .registers 3

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x4

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12

    :cond_b
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    return-void
.end method
