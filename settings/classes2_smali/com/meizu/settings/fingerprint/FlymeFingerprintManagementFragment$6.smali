.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$6;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 554
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 557
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    const-class p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method
