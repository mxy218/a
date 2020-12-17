.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->showCancelFingerprintEnrollDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

.field final synthetic val$cancelReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V
    .registers 3

    .line 948
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;->val$cancelReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 952
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V

    .line 953
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$502(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I

    .line 954
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$14;->val$cancelReason:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V

    return-void
.end method
