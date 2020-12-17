.class public Lcom/android/server/os/IntelligentThermalManager;
.super Ljava/lang/Object;
.source "IntelligentThermalManager.java"


# static fields
.field private static final THERMAL_CONFIG_BENCHMARK:Ljava/lang/String;

.field private static final THERMAL_CONFIG_HIGH:Ljava/lang/String;

.field private static final THERMAL_CONFIG_MID:Ljava/lang/String;

.field private static final THERMAL_CONFIG_OFF:Ljava/lang/String;

.field private static final THERMAL_CONFIG_POWER_SAVE:Ljava/lang/String;

.field static final THERMAL_CONTROL_ENABLE:Z

.field static final THERMAL_ENGINE_BENCHMARK_ENABLE:Z

.field public static final THERMAL_ENGINE_MTK_PLATFORM:Ljava/lang/String; = "mtk"

.field private static final THERMAL_ENGINE_PLATFORM:Ljava/lang/String;

.field public static final THERMAL_ENGINE_QUALCOMM_PLATFORM:Ljava/lang/String; = "qualcomm"

.field public static final THERMAL_ENGINE_SANSUNG_PLATFORM:Ljava/lang/String; = "samsung"

.field static final THERMAL_GAME_LIST:Ljava/lang/String;

.field private static final THERMAL_MANAGER_PATH:Ljava/lang/String;

.field public static final THERMAL_MODE_BENCHMARK:I = 0x4

.field public static final THERMAL_MODE_HIGH:I = 0x3

.field public static final THERMAL_MODE_MID:I = 0x2

.field public static final THERMAL_MODE_OFF:I = 0x0

.field public static final THERMAL_MODE_POWER_SAVE:I = 0x1

.field public static final THERMAL_MODE_SUPER:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-string/jumbo v0, "persist.thermalmanager.path"

    const-string v1, "/vendor/bin/thermal_manager"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_MANAGER_PATH:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "persist.thermalconfig.off"

    const-string v1, "/vendor/etc/.tp/thermal.off.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_OFF:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "persist.vendor.thermalconfig.powersave"

    const-string v1, "/vendor/etc/.tp/thermal.low.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_POWER_SAVE:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "persist.vendor.thermalconfig.mid"

    const-string v1, "/vendor/etc/.tp/thermal.mid.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_MID:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "persist.vendor.thermalconfig.high"

    const-string v1, "/vendor/etc/.tp/thermal.high.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_HIGH:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "persist.vendor.thermalconfig.benchmark"

    const-string v1, "/vendor/etc/.tp/thermal.benchmark.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_BENCHMARK:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "persist.vendor.thermalengine.platform"

    const-string/jumbo v1, "mtk"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_ENGINE_PLATFORM:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.vendor.benchmarkconfig.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_ENGINE_BENCHMARK_ENABLE:Z

    .line 36
    const-string/jumbo v1, "persist.vendor.thermalmanager.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONTROL_ENABLE:Z

    .line 37
    const-string/jumbo v0, "persist.sys.thermal_game"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_GAME_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static execShellCommand(Ljava/lang/String;)V
    .registers 6
    .param p0, "shellCommand"  # Ljava/lang/String;

    .line 146
    const-string v0, "execCommandLine() IO Exception"

    const/4 v1, 0x0

    .line 149
    .local v1, "osw":Ljava/io/OutputStreamWriter;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute shell command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 151
    .local v2, "proc":Ljava/lang/Process;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 152
    nop

    .line 153
    invoke-virtual {v1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 154
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 155
    const-string v3, "exit\n"

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 157
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3d} :catch_72
    .catchall {:try_start_3 .. :try_end_3d} :catchall_70

    .line 163
    nop

    .line 165
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 168
    :goto_41
    goto :goto_47

    .line 166
    :catch_42
    move-exception v3

    .line 167
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    .end local v3  # "e":Ljava/io/IOException;
    goto :goto_41

    .line 173
    :goto_47
    :try_start_47
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 176
    goto :goto_51

    .line 174
    :catch_4b
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "execCommandLine() Interrupted Exception"

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    .line 178
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_51
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_6f

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execCommandLine() Err exit code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    .line 181
    :cond_6f
    return-void

    .line 163
    .end local v2  # "proc":Ljava/lang/Process;
    :catchall_70
    move-exception v2

    goto :goto_81

    .line 159
    :catch_72
    move-exception v2

    .line 160
    .local v2, "ex":Ljava/io/IOException;
    :try_start_73
    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_70

    .line 163
    if-eqz v1, :cond_80

    .line 165
    :try_start_78
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 168
    goto :goto_80

    .line 166
    :catch_7c
    move-exception v3

    .line 167
    .restart local v3  # "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    .line 161
    .end local v3  # "e":Ljava/io/IOException;
    :cond_80
    :goto_80
    return-void

    .line 163
    .end local v2  # "ex":Ljava/io/IOException;
    :goto_81
    if-eqz v1, :cond_8b

    .line 165
    :try_start_83
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    .line 168
    goto :goto_8b

    .line 166
    :catch_87
    move-exception v3

    .line 167
    .restart local v3  # "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    .line 168
    .end local v3  # "e":Ljava/io/IOException;
    :cond_8b
    :goto_8b
    throw v2
.end method

.method public static handleThermalChange(I)V
    .registers 9
    .param p0, "thermalIndex"  # I

    .line 40
    sget-boolean v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONTROL_ENABLE:Z

    if-nez v0, :cond_5

    .line 41
    return-void

    .line 44
    :cond_5
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.thermal_switch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, "policy":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleThermalChange index =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_133

    .line 48
    sget-object v5, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_ENGINE_PLATFORM:Ljava/lang/String;

    const-string/jumbo v6, "mtk"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 49
    if-eqz p0, :cond_5a

    if-eq p0, v4, :cond_57

    if-eq p0, v3, :cond_54

    if-eq p0, v2, :cond_51

    if-eq p0, v1, :cond_47

    .line 70
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_MID:Ljava/lang/String;

    .local v1, "command":Ljava/lang/String;
    goto :goto_5d

    .line 63
    .end local v1  # "command":Ljava/lang/String;
    :cond_47
    sget-boolean v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_ENGINE_BENCHMARK_ENABLE:Z

    if-eqz v1, :cond_4e

    .line 64
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_BENCHMARK:Ljava/lang/String;

    .restart local v1  # "command":Ljava/lang/String;
    goto :goto_5d

    .line 66
    .end local v1  # "command":Ljava/lang/String;
    :cond_4e
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_OFF:Ljava/lang/String;

    .line 68
    .restart local v1  # "command":Ljava/lang/String;
    goto :goto_5d

    .line 60
    .end local v1  # "command":Ljava/lang/String;
    :cond_51
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_HIGH:Ljava/lang/String;

    .line 61
    .restart local v1  # "command":Ljava/lang/String;
    goto :goto_5d

    .line 57
    .end local v1  # "command":Ljava/lang/String;
    :cond_54
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_MID:Ljava/lang/String;

    .line 58
    .restart local v1  # "command":Ljava/lang/String;
    goto :goto_5d

    .line 54
    .end local v1  # "command":Ljava/lang/String;
    :cond_57
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_POWER_SAVE:Ljava/lang/String;

    .line 55
    .restart local v1  # "command":Ljava/lang/String;
    goto :goto_5d

    .line 51
    .end local v1  # "command":Ljava/lang/String;
    :cond_5a
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_OFF:Ljava/lang/String;

    .line 52
    .restart local v1  # "command":Ljava/lang/String;
    nop

    .line 73
    :goto_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_MANAGER_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    goto/16 :goto_16a

    .line 74
    .end local v1  # "command":Ljava/lang/String;
    :cond_78
    sget-object v5, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_ENGINE_PLATFORM:Ljava/lang/String;

    const-string/jumbo v6, "qualcomm"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12d

    .line 75
    const-string/jumbo v5, "stop thermal-engine"

    if-eqz p0, :cond_129

    const-string/jumbo v6, "start thermal-engine"

    const-string/jumbo v7, "thermal-engine -u "

    if-eq p0, v4, :cond_10e

    if-eq p0, v3, :cond_f3

    if-eq p0, v2, :cond_d7

    if-eq p0, v1, :cond_b2

    .line 108
    invoke-static {v5}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_MID:Ljava/lang/String;

    .line 110
    .restart local v1  # "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 111
    invoke-static {v6}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 112
    goto/16 :goto_16a

    .line 98
    .end local v1  # "command":Ljava/lang/String;
    :cond_b2
    sget-boolean v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_ENGINE_BENCHMARK_ENABLE:Z

    if-eqz v1, :cond_d2

    .line 99
    invoke-static {v5}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_BENCHMARK:Ljava/lang/String;

    .line 101
    .restart local v1  # "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 102
    invoke-static {v6}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    goto/16 :goto_16a

    .line 104
    .end local v1  # "command":Ljava/lang/String;
    :cond_d2
    invoke-static {v5}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 106
    goto/16 :goto_16a

    .line 92
    :cond_d7
    invoke-static {v5}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_HIGH:Ljava/lang/String;

    .line 94
    .restart local v1  # "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 95
    invoke-static {v6}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 96
    goto/16 :goto_16a

    .line 86
    .end local v1  # "command":Ljava/lang/String;
    :cond_f3
    invoke-static {v5}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_MID:Ljava/lang/String;

    .line 88
    .restart local v1  # "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 89
    invoke-static {v6}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 90
    goto :goto_16a

    .line 80
    .end local v1  # "command":Ljava/lang/String;
    :cond_10e
    invoke-static {v5}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_POWER_SAVE:Ljava/lang/String;

    .line 82
    .restart local v1  # "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 83
    invoke-static {v6}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 84
    goto :goto_16a

    .line 77
    .end local v1  # "command":Ljava/lang/String;
    :cond_129
    invoke-static {v5}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 78
    goto :goto_16a

    .line 115
    :cond_12d
    const-string v1, "handle thermal change err"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    goto :goto_16a

    .line 117
    :cond_133
    if-ne v0, v4, :cond_16a

    .line 118
    const-string v5, "3"

    const-string/jumbo v6, "persist.sys.thermal.scene"

    if-eqz p0, :cond_167

    if-eq p0, v4, :cond_161

    const-string v4, "1"

    if-eq p0, v3, :cond_15d

    if-eq p0, v2, :cond_157

    if-eq p0, v1, :cond_153

    const/4 v1, 0x5

    if-eq p0, v1, :cond_14d

    .line 138
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16a

    .line 132
    :cond_14d
    const-string v1, "4"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    goto :goto_16a

    .line 135
    :cond_153
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    goto :goto_16a

    .line 129
    :cond_157
    const-string v1, "2"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    goto :goto_16a

    .line 126
    :cond_15d
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    goto :goto_16a

    .line 123
    :cond_161
    const-string v1, "0"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    goto :goto_16a

    .line 120
    :cond_167
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_16a
    :goto_16a
    return-void
.end method

.method public static restoreThermal(I)V
    .registers 4
    .param p0, "powerMode"  # I

    .line 185
    sget-boolean v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONTROL_ENABLE:Z

    if-nez v0, :cond_5

    .line 186
    return-void

    .line 189
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreThermal index =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 192
    if-eqz p0, :cond_31

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_28

    .line 206
    sget-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_MID:Ljava/lang/String;

    .local v0, "command":Ljava/lang/String;
    goto :goto_34

    .line 203
    .end local v0  # "command":Ljava/lang/String;
    :cond_28
    sget-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_OFF:Ljava/lang/String;

    .line 204
    .restart local v0  # "command":Ljava/lang/String;
    goto :goto_34

    .line 194
    .end local v0  # "command":Ljava/lang/String;
    :cond_2b
    sget-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_POWER_SAVE:Ljava/lang/String;

    .line 195
    .restart local v0  # "command":Ljava/lang/String;
    goto :goto_34

    .line 197
    .end local v0  # "command":Ljava/lang/String;
    :cond_2e
    sget-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_MID:Ljava/lang/String;

    .line 198
    .restart local v0  # "command":Ljava/lang/String;
    goto :goto_34

    .line 200
    .end local v0  # "command":Ljava/lang/String;
    :cond_31
    sget-object v0, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_CONFIG_HIGH:Ljava/lang/String;

    .line 201
    .restart local v0  # "command":Ljava/lang/String;
    nop

    .line 209
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/os/IntelligentThermalManager;->THERMAL_MANAGER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/os/IntelligentThermalManager;->execShellCommand(Ljava/lang/String;)V

    .line 210
    return-void
.end method
