.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatedVectorIcon"
.end annotation


# instance fields
.field private mAnimatedResIds:[I

.field private mStaticResIds:[I

.field private mThirdResIds:[I

.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V
    .registers 5

    .line 640
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 641
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->mStaticResIds:[I

    .line 642
    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->mAnimatedResIds:[I

    .line 643
    iput-object p4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->mThirdResIds:[I

    return-void
.end method


# virtual methods
.method public getAnimatedResIds()[I
    .registers 1

    .line 651
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->mAnimatedResIds:[I

    return-object p0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStaticResIds()[I
    .registers 1

    .line 647
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->mStaticResIds:[I

    return-object p0
.end method

.method public getThirdResIds()[I
    .registers 1

    .line 655
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->mThirdResIds:[I

    return-object p0
.end method
