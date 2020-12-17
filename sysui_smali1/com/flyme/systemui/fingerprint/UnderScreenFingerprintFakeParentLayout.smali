.class public Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintFakeParentLayout;
.super Landroid/widget/FrameLayout;
.source "UnderScreenFingerprintFakeParentLayout.java"


# instance fields
.field private mKeepDPIContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintFakeParentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintFakeParentLayout;->mKeepDPIContext:Landroid/content/Context;

    .line 17
    iget-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintFakeParentLayout;->mKeepDPIContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method
