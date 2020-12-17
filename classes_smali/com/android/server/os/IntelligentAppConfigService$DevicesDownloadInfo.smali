.class Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
.super Ljava/lang/Object;
.source "IntelligentAppConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/IntelligentAppConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevicesDownloadInfo"
.end annotation


# static fields
.field public static final DOWNLOAD_URL:Ljava/lang/String; = "url"

.field public static final PRODUCT:Ljava/lang/String; = "product"


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/os/IntelligentAppConfigService;


# direct methods
.method private constructor <init>(Lcom/android/server/os/IntelligentAppConfigService;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/os/IntelligentAppConfigService;Lcom/android/server/os/IntelligentAppConfigService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/os/IntelligentAppConfigService;
    .param p2, "x1"  # Lcom/android/server/os/IntelligentAppConfigService$1;

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;-><init>(Lcom/android/server/os/IntelligentAppConfigService;)V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "downloadUrl"  # Ljava/lang/String;

    .line 282
    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .registers 2
    .param p1, "product"  # Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->product:Ljava/lang/String;

    .line 275
    return-void
.end method
