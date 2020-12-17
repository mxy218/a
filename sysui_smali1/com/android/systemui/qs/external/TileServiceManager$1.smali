.class Lcom/android/systemui/qs/external/TileServiceManager$1;
.super Ljava/lang/Object;
.source "TileServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/TileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->access$000(Lcom/android/systemui/qs/external/TileServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->access$100(Lcom/android/systemui/qs/external/TileServiceManager;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 243
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->access$200(Lcom/android/systemui/qs/external/TileServiceManager;)V

    :cond_15
    return-void
.end method
