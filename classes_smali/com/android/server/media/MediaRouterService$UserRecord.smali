.class final Lcom/android/server/media/MediaRouterService$UserRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UserRecord"
.end annotation


# instance fields
.field private final mClientGroupMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/MediaRouterService$ClientGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final mClientRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouterService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

.field public mRouterState:Landroid/media/MediaRouterClientState;

.field public final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;I)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/media/MediaRouterService;
    .param p2, "userId"  # I

    .line 802
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 800
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 803
    iput p2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    .line 804
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/media/MediaRouterService$UserHandler;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 805
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 795
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method public addToGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 6
    .param p1, "groupId"  # Ljava/lang/String;
    .param p2, "clientRecord"  # Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 834
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 835
    .local v0, "group":Lcom/android/server/media/MediaRouterService$ClientGroup;
    if-nez v0, :cond_17

    .line 836
    new-instance v1, Lcom/android/server/media/MediaRouterService$ClientGroup;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouterService$ClientGroup;-><init>(Lcom/android/server/media/MediaRouterService;)V

    move-object v0, v1

    .line 837
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :cond_17
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 812
    .local v1, "clientCount":I
    if-eqz v1, :cond_3d

    .line 813
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_3c

    .line 814
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 813
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .end local v2  # "i":I
    :cond_3c
    goto :goto_51

    .line 817
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<no clients>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    :goto_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mRouterState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouterService$UserRecord$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/media/MediaRouterService$UserRecord$1;-><init>(Lcom/android/server/media/MediaRouterService$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<could not dump handler state>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    :cond_a2
    return-void
.end method

.method public removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 5
    .param p1, "groupId"  # Ljava/lang/String;
    .param p2, "clientRecord"  # Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 843
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 844
    .local v0, "group":Lcom/android/server/media/MediaRouterService$ClientGroup;
    if-eqz v0, :cond_1c

    .line 845
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 846
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1c

    .line 847
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
