.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$10;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initAddFPLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 2

    .line 624
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$10;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 628
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$10;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1100(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 631
    :cond_9
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$10;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$1200(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    return-void
.end method
