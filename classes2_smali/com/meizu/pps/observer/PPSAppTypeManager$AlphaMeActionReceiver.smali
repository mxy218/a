.class Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;
.super Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
.source "PPSAppTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/pps/observer/PPSAppTypeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaMeActionReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 292
    const-string v0, "APP_LIST_CHANGED"

    invoke-direct {p0, v0}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;-><init>(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/pps/observer/PPSAppTypeManager$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/meizu/pps/observer/PPSAppTypeManager$1;

    .line 290
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager$AlphaMeActionReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/Object;

    .line 296
    move-object v0, p2

    check-cast v0, Lcom/meizu/common/alphame/Args;

    .line 297
    .local v0, "args":Lcom/meizu/common/alphame/Args;
    if-eqz v0, :cond_27

    .line 298
    invoke-virtual {v0}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 300
    .local v1, "type":I
    invoke-virtual {v0}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 301
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1f

    goto :goto_27

    .line 303
    :cond_1f
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->access$100()V

    .line 304
    const/16 v3, 0x1000

    invoke-static {v3, v2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateList(ILjava/util/ArrayList;)V

    .line 308
    .end local v1  # "type":I
    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_27
    :goto_27
    return-void
.end method
