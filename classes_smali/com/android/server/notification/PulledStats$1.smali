.class Lcom/android/server/notification/PulledStats$1;
.super Ljava/lang/Thread;
.source "PulledStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/PulledStats;->toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/PulledStats;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$report:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/PulledStats;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;I)V
    .registers 5

    .line 52
    iput-object p1, p0, Lcom/android/server/notification/PulledStats$1;->this$0:Lcom/android/server/notification/PulledStats;

    iput-object p3, p0, Lcom/android/server/notification/PulledStats$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput p4, p0, Lcom/android/server/notification/PulledStats$1;->val$report:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 55
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/android/server/notification/PulledStats$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 57
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    iget-object v2, p0, Lcom/android/server/notification/PulledStats$1;->this$0:Lcom/android/server/notification/PulledStats;

    iget v3, p0, Lcom/android/server/notification/PulledStats$1;->val$report:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/notification/PulledStats;->writeToProto(ILandroid/util/proto/ProtoOutputStream;)V

    .line 59
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 60
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 63
    goto :goto_25

    .line 61
    :catch_1d
    move-exception v0

    .line 62
    const-string v1, "PulledStats"

    const-string v2, "Failure writing pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_25
    return-void
.end method
