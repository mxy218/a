.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2$1;
.super Ljava/lang/Object;
.source "MzAppsPickActivity.java"

# interfaces
.implements Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;->onMzAppsPickConfirm(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;)V
    .registers 2

    .line 672
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2$1;->this$3:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMzAppsPickConfirm(Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 679
    :cond_3
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2$1;->this$3:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2500(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V

    return-void
.end method
