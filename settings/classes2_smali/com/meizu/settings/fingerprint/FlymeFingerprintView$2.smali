.class Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;
.super Ljava/lang/Object;
.source "FlymeFingerprintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->createPathView(IIZ)Lcom/eftimoff/androipathview/PathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintView;

.field final synthetic val$needAnim:Z

.field final synthetic val$pathView:Lcom/eftimoff/androipathview/PathView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintView;ZLcom/eftimoff/androipathview/PathView;)V
    .registers 4

    .line 76
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintView;

    iput-boolean p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;->val$needAnim:Z

    iput-object p3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;->val$pathView:Lcom/eftimoff/androipathview/PathView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 79
    iget-boolean v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;->val$needAnim:Z

    if-eqz v0, :cond_16

    .line 80
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;->val$pathView:Lcom/eftimoff/androipathview/PathView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/16 v4, 0xc8

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintView;

    .line 81
    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->access$000(Lcom/meizu/settings/fingerprint/FlymeFingerprintView;)Landroid/view/animation/PathInterpolator;

    move-result-object v6

    .line 80
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/utils/MzUtils;->startPathViewAnimation(Lcom/eftimoff/androipathview/PathView;FFIILandroid/view/animation/PathInterpolator;)V

    goto :goto_1d

    .line 83
    :cond_16
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;->val$pathView:Lcom/eftimoff/androipathview/PathView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/eftimoff/androipathview/PathView;->setPercentage(F)V

    :goto_1d
    return-void
.end method
