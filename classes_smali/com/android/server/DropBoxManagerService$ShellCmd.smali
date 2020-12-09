.class Lcom/android/server/DropBoxManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService$1;)V
    .registers 3

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;-><init>(Lcom/android/server/DropBoxManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 9

    .line 174
    if-nez p1, :cond_7

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 177
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 179
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_7e

    :cond_17
    goto :goto_42

    :sswitch_18
    const-string/jumbo v3, "set-rate-limit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v1, v2

    goto :goto_42

    :sswitch_23
    const-string/jumbo v3, "remove-low-priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v1, v5

    goto :goto_42

    :sswitch_2e
    const-string v3, "add-low-priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v1, v6

    goto :goto_42

    :sswitch_38
    const-string/jumbo v3, "restore-defaults"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v1, v4

    :goto_42
    if-eqz v1, :cond_69

    if-eq v1, v6, :cond_5f

    if-eq v1, v5, :cond_55

    if-eq v1, v4, :cond_4f

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 193
    :cond_4f
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p1}, Lcom/android/server/DropBoxManagerService;->access$700(Lcom/android/server/DropBoxManagerService;)V

    .line 194
    goto :goto_77

    .line 189
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v1, p1}, Lcom/android/server/DropBoxManagerService;->access$600(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V

    .line 191
    goto :goto_77

    .line 185
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v1, p1}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V

    .line 187
    goto :goto_77

    .line 181
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 182
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p1, v3, v4}, Lcom/android/server/DropBoxManagerService;->access$400(Lcom/android/server/DropBoxManagerService;J)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_76} :catch_78

    .line 183
    nop

    .line 200
    :goto_77
    goto :goto_7c

    .line 198
    :catch_78
    move-exception p1

    .line 199
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 201
    :goto_7c
    return v2

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x54335d4f -> :sswitch_38
        -0x1f8bae57 -> :sswitch_2e
        -0x1a85055a -> :sswitch_23
        0x737302d9 -> :sswitch_18
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 3

    .line 206
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 207
    const-string v1, "Dropbox manager service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    const-string v1, "  set-rate-limit PERIOD"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const-string v1, "    Sets low priority broadcast rate limit period to PERIOD ms"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    const-string v1, "  add-low-priority TAG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    const-string v1, "    Add TAG to dropbox low priority list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    const-string v1, "  remove-low-priority TAG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const-string v1, "    Remove TAG from dropbox low priority list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v1, "  restore-defaults"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string v1, "    restore dropbox settings to defaults"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    return-void
.end method
