.class Lcom/android/server/pm/UpdateAppsReceiver$1;
.super Ljava/lang/Thread;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UpdateAppsReceiver;->updateCustomAppsIfNeeded(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdateAppsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 106
    const-string v0, "UpdateAppsReceiver"

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app/.need_init"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "verifyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 108
    const-string v2, "/data/app/.need_init do not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/pm/UpdateAppsReceiver;->access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z

    goto :goto_3d

    .line 112
    :cond_1b
    iget-object v2, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/pm/UpdateAppsReceiver;->access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_112

    .line 114
    :try_start_21
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    .line 118
    goto :goto_3d

    .line 115
    :catch_25
    move-exception v2

    .line 116
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/app/.need_init create ex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_3d
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_4a

    .line 122
    const-string/jumbo v2, "mPm is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 126
    :cond_4a
    const/4 v2, -0x2

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    .line 129
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-static {v2}, Lcom/android/server/pm/UpdateAppsReceiver;->access$202(Ljava/util/List;)Ljava/util/List;

    .line 130
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$200()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/pm/UpdateAppsReceiver;->access$302(I)I

    .line 132
    iget-object v2, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    new-instance v3, Ljava/io/File;

    const-string v4, "/custom/gms/apk/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/pm/UpdateAppsReceiver;->access$400(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    new-instance v4, Ljava/io/File;

    const-string v5, "/custom/3rd-party/apk/Pedometer"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$400(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v3}, Lcom/android/server/pm/UpdateAppsReceiver;->access$000(Lcom/android/server/pm/UpdateAppsReceiver;)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 135
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-virtual {v3}, Lcom/android/server/pm/UpdateAppsReceiver;->getFirstBootAlreadyOfUpdate()Z

    move-result v3

    if-nez v3, :cond_9e

    .line 136
    const-string/jumbo v3, "is firstboot"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-virtual {v3}, Lcom/android/server/pm/UpdateAppsReceiver;->setFirstBootAlreadyForUpdate()V

    .line 139
    :cond_9e
    return-void

    .line 142
    :cond_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result.size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_bf

    .line 144
    return-void

    .line 146
    :cond_bf
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v3, v2}, Lcom/android/server/pm/UpdateAppsReceiver;->access$500(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 147
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    nop

    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/io/File;

    .line 147
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$602([Ljava/io/File;)[Ljava/io/File;

    .line 149
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$600()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$702(I)I

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLenght : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$700()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$700()I

    move-result v4

    if-lez v4, :cond_111

    .line 152
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x65

    .line 153
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 152
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_111} :catch_112

    .line 158
    .end local v1  # "verifyFile":Ljava/io/File;
    .end local v2  # "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3  # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_111
    goto :goto_12a

    .line 155
    :catch_112
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception !!!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_12a
    return-void
.end method
