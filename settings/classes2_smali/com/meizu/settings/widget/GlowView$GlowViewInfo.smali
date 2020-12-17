.class Lcom/meizu/settings/widget/GlowView$GlowViewInfo;
.super Ljava/lang/Object;
.source "GlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/GlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowViewInfo"
.end annotation


# instance fields
.field isAlive:Z

.field mAlpha:I

.field mBornTime:J

.field mRadius:I

.field final synthetic this$0:Lcom/meizu/settings/widget/GlowView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/widget/GlowView;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    return-void
.end method
