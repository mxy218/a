.class Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkFactoryInfo"
.end annotation


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public final factorySerialNumber:I

.field public final messenger:Landroid/os/Messenger;

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;I)V
    .registers 5

    .line 5141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5142
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    .line 5143
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    .line 5144
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 5145
    iput p4, p0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->factorySerialNumber:I

    .line 5146
    return-void
.end method
