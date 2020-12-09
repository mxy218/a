.class Lcom/android/server/NsdService$ClientInfo;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0xa


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mClientIds:Landroid/util/SparseIntArray;

.field private final mClientRequests:Landroid/util/SparseIntArray;

.field private final mMessenger:Landroid/os/Messenger;

.field private mResolvedService:Landroid/net/nsd/NsdServiceInfo;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method private constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .registers 5

    .line 822
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    .line 820
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    .line 823
    iput-object p2, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    .line 824
    iput-object p3, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 825
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New client, channel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " messenger: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NsdService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$1;)V
    .registers 5

    .line 808
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;
    .registers 1

    .line 808
    iget-object p0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;
    .registers 1

    .line 808
    iget-object p0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;
    .registers 1

    .line 808
    iget-object p0, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;
    .registers 2

    .line 808
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/NsdService$ClientInfo;I)I
    .registers 2

    .line 808
    invoke-direct {p0, p1}, Lcom/android/server/NsdService$ClientInfo;->getClientId(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .registers 1

    .line 808
    iget-object p0, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/NsdService$ClientInfo;)V
    .registers 1

    .line 808
    invoke-direct {p0}, Lcom/android/server/NsdService$ClientInfo;->expungeAllRequests()V

    return-void
.end method

.method private expungeAllRequests()V
    .registers 6

    .line 848
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    .line 849
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 850
    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 851
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Terminating client-ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " global-ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    .line 853
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 852
    const-string v4, "NsdService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const v3, 0x60001

    if-eq v1, v3, :cond_6c

    const v3, 0x60009

    if-eq v1, v3, :cond_66

    const v3, 0x60012

    if-eq v1, v3, :cond_60

    goto :goto_72

    .line 859
    :cond_60
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v2}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    .line 860
    goto :goto_72

    .line 862
    :cond_66
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v2}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    .line 863
    goto :goto_72

    .line 856
    :cond_6c
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v2}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    .line 857
    nop

    .line 848
    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 868
    :cond_75
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 869
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 870
    return-void
.end method

.method private getClientId(I)I
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p1

    .line 876
    if-gez p1, :cond_9

    .line 877
    return p1

    .line 879
    :cond_9
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 830
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 831
    const-string v1, "mChannel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    const-string v2, "mMessenger "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 833
    const-string v2, "mResolvedService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    const/4 v2, 0x0

    :goto_2f
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 835
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 836
    const-string v4, "clientId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 837
    const-string v4, " mDnsId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 838
    const-string v4, " type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 840
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
