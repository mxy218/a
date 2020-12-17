.class public Lcom/meizu/settings/voicewakeup/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static ASR_PRESET:Ljava/lang/String; = "7100"

.field public static CVS_PRESET:Ljava/lang/String; = "7001"

.field public static INTERNAL_ROUTE:Ljava/lang/String; = "Internal Route"

.field public static INTERNAL_ROUTE_MIC:Ljava/lang/String; = "22"

.field public static VS_POWER_STATE:Ljava/lang/String; = "ES705 Power State"

.field public static VS_POWER_STATE_LOW:Ljava/lang/String; = "Low_Power"

.field public static VS_POWER_STATE_NORMAL:Ljava/lang/String; = "Normal"

.field public static VS_POWER_STATE_OVERLAY:Ljava/lang/String; = "Overlay"

.field public static VS_STATUS:Ljava/lang/String; = "ES705 Get Event Status"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Google Search"

    const-string v1, "Wake Up"

    .line 108
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public static setconfig(Ljava/lang/String;)V
    .registers 6

    const-string v0, "eS755"

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "7001"

    const-string v2, "Overlay"

    const-string v3, "Normal"

    const-string v4, "Low_Power"

    if-eqz v0, :cond_53

    const-string v0, "ES755 Power State"

    .line 115
    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE:Ljava/lang/String;

    .line 116
    sput-object v4, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE_LOW:Ljava/lang/String;

    .line 117
    sput-object v3, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE_NORMAL:Ljava/lang/String;

    .line 118
    sput-object v2, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE_OVERLAY:Ljava/lang/String;

    const-string v0, "ES755 Get Event Status"

    .line 119
    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->VS_STATUS:Ljava/lang/String;

    const-string v0, "Preset"

    .line 120
    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->INTERNAL_ROUTE:Ljava/lang/String;

    const-string v0, "PDM"

    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 122
    sput-object v1, Lcom/meizu/settings/voicewakeup/Constants;->CVS_PRESET:Ljava/lang/String;

    const-string p0, "1386"

    .line 123
    sput-object p0, Lcom/meizu/settings/voicewakeup/Constants;->INTERNAL_ROUTE_MIC:Ljava/lang/String;

    goto :goto_7f

    :cond_31
    const-string v0, "MIC0"

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "7050"

    .line 125
    sput-object p0, Lcom/meizu/settings/voicewakeup/Constants;->CVS_PRESET:Ljava/lang/String;

    const-string p0, "1384"

    .line 126
    sput-object p0, Lcom/meizu/settings/voicewakeup/Constants;->INTERNAL_ROUTE_MIC:Ljava/lang/String;

    goto :goto_7f

    :cond_42
    const-string v0, "MICHS"

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7f

    const-string p0, "7051"

    .line 128
    sput-object p0, Lcom/meizu/settings/voicewakeup/Constants;->CVS_PRESET:Ljava/lang/String;

    const-string p0, "1387"

    .line 129
    sput-object p0, Lcom/meizu/settings/voicewakeup/Constants;->INTERNAL_ROUTE_MIC:Ljava/lang/String;

    goto :goto_7f

    :cond_53
    const-string v0, "ES705 Power State"

    .line 133
    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE:Ljava/lang/String;

    .line 134
    sput-object v4, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE_LOW:Ljava/lang/String;

    .line 135
    sput-object v3, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE_NORMAL:Ljava/lang/String;

    .line 136
    sput-object v2, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE_OVERLAY:Ljava/lang/String;

    const-string v0, "ES705 Get Event Status"

    .line 137
    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->VS_STATUS:Ljava/lang/String;

    .line 138
    sput-object v1, Lcom/meizu/settings/voicewakeup/Constants;->CVS_PRESET:Ljava/lang/String;

    const-string v0, "Internal Route"

    .line 139
    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->INTERNAL_ROUTE:Ljava/lang/String;

    const-string v0, "22"

    .line 140
    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->INTERNAL_ROUTE_MIC:Ljava/lang/String;

    const-string v0, "7100"

    .line 141
    sput-object v0, Lcom/meizu/settings/voicewakeup/Constants;->ASR_PRESET:Ljava/lang/String;

    const-string v0, "2Mic-ASRA"

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7f

    const-string p0, "7002"

    .line 143
    sput-object p0, Lcom/meizu/settings/voicewakeup/Constants;->CVS_PRESET:Ljava/lang/String;

    const-string p0, "7101"

    .line 144
    sput-object p0, Lcom/meizu/settings/voicewakeup/Constants;->ASR_PRESET:Ljava/lang/String;

    :cond_7f
    :goto_7f
    return-void
.end method
