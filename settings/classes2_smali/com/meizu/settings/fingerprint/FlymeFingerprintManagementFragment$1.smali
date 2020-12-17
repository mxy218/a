.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$1;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->initBackPressedListener()V
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

    .line 160
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$000(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    .line 164
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$100(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Z)V

    :cond_f
    return v1
.end method
