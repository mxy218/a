.class Lcom/android/server/hips/security/SecurityPayDispalyActivity$1;
.super Ljava/lang/Object;
.source "SecurityPayDispalyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/security/SecurityPayDispalyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/security/SecurityPayDispalyActivity;


# direct methods
.method constructor <init>(Lcom/android/server/hips/security/SecurityPayDispalyActivity;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/security/SecurityPayDispalyActivity;

    .line 35
    iput-object p1, p0, Lcom/android/server/hips/security/SecurityPayDispalyActivity$1;->this$0:Lcom/android/server/hips/security/SecurityPayDispalyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"  # Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityPayDispalyActivity$1;->this$0:Lcom/android/server/hips/security/SecurityPayDispalyActivity;

    invoke-virtual {v0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->finish()V

    .line 40
    return-void
.end method
