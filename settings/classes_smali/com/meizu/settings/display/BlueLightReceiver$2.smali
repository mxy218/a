.class Lcom/meizu/settings/display/BlueLightReceiver$2;
.super Ljava/lang/Object;
.source "BlueLightReceiver.java"

# interfaces
.implements Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/BlueLightReceiver;->restoreDisplaySettingsIfNeeded(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/BlueLightReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$wrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/BlueLightReceiver;Lcom/meizu/settings/display/QcomDisplayWrapper;Landroid/content/Context;)V
    .registers 4

    .line 98
    iput-object p1, p0, Lcom/meizu/settings/display/BlueLightReceiver$2;->this$0:Lcom/meizu/settings/display/BlueLightReceiver;

    iput-object p2, p0, Lcom/meizu/settings/display/BlueLightReceiver$2;->val$wrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iput-object p3, p0, Lcom/meizu/settings/display/BlueLightReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 4

    .line 102
    invoke-static {}, Lcom/meizu/settings/display/BlueLightReceiver;->access$000()I

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReceiver$2;->val$wrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {}, Lcom/meizu/settings/display/BlueLightReceiver;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setColorBalance(I)Z

    .line 106
    :cond_f
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "immediately_on_or_off"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    if-eqz v0, :cond_29

    .line 108
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReceiver$2;->val$wrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {v0, v2, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->animateEyeProtectModeOn(ZZ)V

    .line 111
    :cond_29
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReceiver$2;->val$wrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReceiver$2;->this$0:Lcom/meizu/settings/display/BlueLightReceiver;

    invoke-static {p0}, Lcom/meizu/settings/display/BlueLightReceiver;->access$100(Lcom/meizu/settings/display/BlueLightReceiver;)Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->unregisterDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V

    return-void
.end method
