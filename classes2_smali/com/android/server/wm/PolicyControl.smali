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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I
    .registers 4
    .param p0, "win"  # Lcom/android/server/wm/WindowState;
    .param p1, "clearableFlags"  # I

    .line 102
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 103
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 104
    and-int/lit8 p1, p1, -0x5

    .line 106
    :cond_14
    return p1
.end method

.method static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"  # Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_a

    .line 111
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 112
    :cond_a
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 110
    :goto_13
    return v0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "name"  # Ljava/lang/String;
    .param p1, "filter"  # Lcom/android/server/wm/PolicyControl$Filter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "pw"  # Ljava/io/PrintWriter;

    .line 141
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 142
    if-nez p1, :cond_18

    .line 143
    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 145
    :cond_18
    invoke-virtual {p1, p3}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 147
    :goto_1e
    return-void
.end method

.method static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "prefix"  # Ljava/lang/String;
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 135
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersiveStatusFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 136
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersiveNavigationFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 137
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersivePreconfirmationsFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 138
    return-void
.end method

.method static getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p0, "win"  # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"  # Landroid/view/WindowManager$LayoutParams;

    .line 67
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 68
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v0

    goto :goto_15

    .line 69
    :cond_10
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    :goto_15
    nop

    .line 70
    .local v0, "vis":I
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_26

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 71
    or-int/lit16 v0, v0, 0x1404

    .line 74
    const v1, -0x40000101  # -1.9999694f

    and-int/2addr v0, v1

    .line 77
    :cond_26
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_36

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 78
    or-int/lit16 v0, v0, 0x1202

    .line 81
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 84
    :cond_36
    return v0
.end method

.method static getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p0, "win"  # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"  # Landroid/view/WindowManager$LayoutParams;

    .line 88
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 89
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    .local v0, "flags":I
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 91
    or-int/lit16 v0, v0, 0x400

    .line 92
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 95
    :cond_1b
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_29

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 96
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 98
    :cond_29
    return v0
.end method

.method static reloadFromSetting(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"  # Landroid/content/Context;

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 122
    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eq v2, v0, :cond_27

    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_27

    .line 125
    :cond_1f
    invoke-static {v0}, Lcom/android/server/wm/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 126
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_28

    .line 130
    nop

    .line 131
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_27
    :goto_27
    return v1

    .line 127
    :catchall_28
    move-exception v2

    .line 128
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PolicyControl"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    return v1
.end method

.method private static setFilters(Ljava/lang/String;)V
    .registers 11
    .param p0, "value"  # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 152
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 153
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 154
    if-eqz p0, :cond_78

    .line 155
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "nvps":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_78

    aget-object v4, v0, v3

    .line 157
    .local v4, "nvp":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 158
    .local v5, "i":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_20

    goto :goto_75

    .line 159
    :cond_20
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "n":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "v":Ljava/lang/String;
    const-string v8, "immersive.full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 162
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 163
    .local v8, "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 164
    sget-object v9, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v9, :cond_40

    .line 165
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 167
    .end local v8  # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_40
    goto :goto_75

    :cond_41
    const-string v8, "immersive.status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 168
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 169
    .restart local v8  # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 170
    .end local v8  # "f":Lcom/android/server/wm/PolicyControl$Filter;
    goto :goto_75

    :cond_50
    const-string v8, "immersive.navigation"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 171
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 172
    .restart local v8  # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 173
    sget-object v9, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v9, :cond_74

    .line 174
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_74

    .line 176
    .end local v8  # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_65
    const-string v8, "immersive.preconfirms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 177
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 178
    .restart local v8  # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_75

    .line 176
    .end local v8  # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_74
    :goto_74
    nop

    .line 156
    .end local v4  # "nvp":Ljava/lang/String;
    .end local v5  # "i":I
    .end local v6  # "n":Ljava/lang/String;
    .end local v7  # "v":Ljava/lang/String;
    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 187
    .end local v0  # "nvps":[Ljava/lang/String;
    :cond_78
    return-void
.end method
