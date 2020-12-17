.class Lcom/meizu/settings/deviceinfo/FlymeStatus$4;
.super Ljava/lang/Object;
.source "FlymeStatus.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeStatus;->setOnWindowFocusChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 399
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->access$400(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V

    return-void
.end method
