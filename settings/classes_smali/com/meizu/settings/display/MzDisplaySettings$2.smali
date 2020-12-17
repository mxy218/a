.class Lcom/meizu/settings/display/MzDisplaySettings$2;
.super Landroid/database/ContentObserver;
.source "MzDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/MzDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/MzDisplaySettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/MzDisplaySettings;Landroid/os/Handler;)V
    .registers 3

    .line 518
    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings$2;->this$0:Lcom/meizu/settings/display/MzDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 521
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings$2;->this$0:Lcom/meizu/settings/display/MzDisplaySettings;

    invoke-static {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->access$100(Lcom/meizu/settings/display/MzDisplaySettings;)V

    return-void
.end method
