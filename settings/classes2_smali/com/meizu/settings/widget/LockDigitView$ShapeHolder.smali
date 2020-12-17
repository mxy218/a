.class Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;
.super Ljava/lang/Object;
.source "LockDigitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/LockDigitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShapeHolder"
.end annotation


# instance fields
.field private alpha:F

.field private scale:F

.field final synthetic this$0:Lcom/meizu/settings/widget/LockDigitView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/widget/LockDigitView;)V
    .registers 2

    .line 947
    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;->this$0:Lcom/meizu/settings/widget/LockDigitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 928
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;->scale:F

    .line 929
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;->alpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 1

    .line 944
    iget p0, p0, Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;->alpha:F

    return p0
.end method
