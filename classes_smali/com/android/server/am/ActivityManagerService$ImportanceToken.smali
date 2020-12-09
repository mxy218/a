.class abstract Lcom/android/server/am/ActivityManagerService$ImportanceToken;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ImportanceToken"
.end annotation


# instance fields
.field final pid:I

.field final reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 821
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->pid:I

    .line 823
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->token:Landroid/os/IBinder;

    .line 824
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->reason:Ljava/lang/String;

    .line 825
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImportanceToken { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->reason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 834
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 835
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->pid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 836
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_1e

    .line 837
    const-wide v1, 0x10900000002L

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 839
    :cond_1e
    const-wide v0, 0x10900000003L

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ImportanceToken;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 840
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 841
    return-void
.end method
