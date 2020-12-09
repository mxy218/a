.class Lcom/android/server/wm/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static final TAG:Ljava/lang/String; = "PolicyControl"

.field private static sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I
    .registers 3

    .line 104
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 105
    :goto_8
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 106
    and-int/lit8 p1, p1, -0x5

    .line 108
    :cond_14
    return p1
.end method

.method static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .registers 2

    .line 112
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_a

    .line 113
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 114
    :cond_a
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 112
    :goto_13
    return p0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 143
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "PolicyControl."

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x3d

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 144
    if-nez p1, :cond_18

    .line 145
    const-string p0, "null"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 147
    :cond_18
    invoke-virtual {p1, p3}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 149
    :goto_1e
    return-void
.end method

.method static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 137
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersiveStatusFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 138
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersiveNavigationFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 139
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersivePreconfirmationsFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 140
    return-void
.end method

.method static getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 3

    .line 65
    if-eqz p1, :cond_3

    goto :goto_7

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 66
    :goto_7
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result p0

    goto :goto_13

    .line 67
    :cond_e
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr p0, v0

    .line 68
    :goto_13
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 69
    or-int/lit16 p0, p0, 0x1004

    .line 71
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 72
    or-int/lit16 p0, p0, 0x400

    .line 74
    :cond_27
    const v0, -0x40000101  # -1.9999694f

    and-int/2addr p0, v0

    .line 77
    :cond_2b
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_43

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 78
    or-int/lit16 p0, p0, 0x1002

    .line 80
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 81
    or-int/lit16 p0, p0, 0x200

    .line 83
    :cond_3f
    const p1, 0x7ffffeff

    and-int/2addr p0, p1

    .line 86
    :cond_43
    return p0
.end method

.method static getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 3

    .line 90
    if-eqz p1, :cond_3

    goto :goto_7

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 91
    :goto_7
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 93
    or-int/lit16 p0, p0, 0x400

    .line 94
    const v0, -0x4000801

    and-int/2addr p0, v0

    .line 97
    :cond_19
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_27

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 98
    const p1, -0x8000001

    and-int/2addr p0, p1

    .line 100
    :cond_27
    return p0
.end method

.method static reloadFromSetting(Landroid/content/Context;)Z
    .registers 5

    .line 119
    nop

    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "policy_control"

    const/4 v3, -0x2

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 124
    sget-object p0, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eq p0, v1, :cond_27

    sget-object p0, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz p0, :cond_1f

    sget-object p0, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_27

    .line 127
    :cond_1f
    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 128
    sput-object v1, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_28

    .line 132
    nop

    .line 133
    const/4 p0, 0x1

    return p0

    .line 125
    :cond_27
    :goto_27
    return v0

    .line 129
    :catchall_28
    move-exception p0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading policy control, value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PolicyControl"

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    return v0
.end method

.method private static setFilters(Ljava/lang/String;)V
    .registers 7

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 154
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 155
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 156
    if-eqz p0, :cond_78

    .line 157
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 158
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_78

    aget-object v3, p0, v2

    .line 159
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 160
    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    goto :goto_75

    .line 161
    :cond_20
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 162
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    const-string v4, "immersive.full"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 164
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v3

    .line 165
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 166
    sget-object v4, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v4, :cond_40

    .line 167
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 169
    :cond_40
    goto :goto_75

    :cond_41
    const-string v4, "immersive.status"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 170
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v3

    .line 171
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 172
    goto :goto_75

    :cond_50
    const-string v4, "immersive.navigation"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 173
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v3

    .line 174
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 175
    sget-object v4, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v4, :cond_74

    .line 176
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_74

    .line 178
    :cond_65
    const-string v4, "immersive.preconfirms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 179
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v3

    .line 180
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_75

    .line 178
    :cond_74
    :goto_74
    nop

    .line 158
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 189
    :cond_78
    return-void
.end method
