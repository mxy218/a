.class final Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnicastResponder"
.end annotation


# instance fields
.field private final mSolication:[B

.field private final solicitor:Ljava/net/InetSocketAddress;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .registers 2

    .line 656
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 657
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1}, Ljava/net/InetSocketAddress;-><init>()V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    .line 661
    const/16 p1, 0x500

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V
    .registers 3

    .line 656
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 665
    :goto_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 668
    :try_start_8
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 669
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$400(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    array-length v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    .line 668
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v0

    .line 671
    const/4 v1, 0x1

    if-lt v0, v1, :cond_33

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {}, Landroid/net/ip/RouterAdvertisementDaemon;->access$500()B

    move-result v1
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_27} :catch_34
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_27} :catch_34

    if-eq v0, v1, :cond_2a

    goto :goto_33

    .line 679
    :cond_2a
    nop

    .line 681
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    invoke-static {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$700(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    goto :goto_0

    .line 672
    :cond_33
    :goto_33
    goto :goto_0

    .line 674
    :catch_34
    move-exception v0

    .line 675
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 676
    invoke-static {}, Landroid/net/ip/RouterAdvertisementDaemon;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recvfrom error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_56
    goto :goto_0

    .line 683
    :cond_57
    return-void
.end method
