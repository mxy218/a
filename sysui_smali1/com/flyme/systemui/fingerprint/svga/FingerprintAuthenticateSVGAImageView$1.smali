.class Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$1;
.super Landroid/database/ContentObserver;
.source "FingerprintAuthenticateSVGAImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;Landroid/os/Handler;)V
    .registers 3

    .line 40
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$1;->this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 43
    iget-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$1;->this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->access$100(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_animation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->access$002(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;I)I

    .line 44
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$1;->this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->access$200(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;)V

    return-void
.end method
