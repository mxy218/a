.class Lcom/meizu/settings/display/BluelightUtils$1;
.super Ljava/lang/Object;
.source "BluelightUtils.java"

# interfaces
.implements Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/BluelightUtils;->setBluelightEnable(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isEnable:Z

.field final synthetic val$qcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcom/meizu/settings/display/BluelightUtils$1;->val$qcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iput-boolean p2, p0, Lcom/meizu/settings/display/BluelightUtils$1;->val$isEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightUtils$1;->val$qcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-boolean p0, p0, Lcom/meizu/settings/display/BluelightUtils$1;->val$isEnable:Z

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->animateEyeProtectModeOn(ZZ)V

    return-void
.end method
