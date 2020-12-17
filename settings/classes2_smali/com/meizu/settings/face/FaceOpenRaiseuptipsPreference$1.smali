.class Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference$1;
.super Ljava/lang/Object;
.source "FaceOpenRaiseuptipsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;->showTipsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference$1;->this$0:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference$1;->this$0:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    invoke-static {v0}, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;->access$000(Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 89
    iget-object p0, p0, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference$1;->this$0:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    invoke-static {p0}, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;->access$000(Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_11
    return-void
.end method
