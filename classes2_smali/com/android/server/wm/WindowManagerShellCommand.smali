.class public Lcom/android/server/wm/WindowManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "WindowManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/view/IWindowManager;

.field private final mInternal:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 51
    return-void
.end method

.method private getDisplayId(Ljava/lang/String;)I
    .registers 5

    .line 92
    nop

    .line 93
    const-string v0, "-d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object p1

    .line 94
    :goto_e
    if-eqz p1, :cond_52

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 96
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1e} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 101
    goto :goto_53

    .line 99
    :catch_1f
    move-exception p1

    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 97
    :catch_39
    move-exception p1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    :cond_52
    :goto_52
    const/4 p1, 0x0

    :goto_53
    return p1
.end method

.method private parseDimension(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 291
    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 294
    :cond_18
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 297
    const/16 v0, 0xa0

    :try_start_22
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v2, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_29

    .line 300
    goto :goto_2b

    .line 298
    :catch_29
    move-exception p2

    .line 299
    move p2, v0

    .line 301
    :goto_2b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/2addr p1, p2

    div-int/2addr p1, v0

    return p1

    .line 304
    :cond_3c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private printFoldedArea(Ljava/io/PrintWriter;)V
    .registers 6

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 215
    const-string v0, "Folded area: none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    .line 217
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folded area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    :goto_42
    return-void
.end method

.method private printInitialDisplayDensity(Ljava/io/PrintWriter;I)V
    .registers 6

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v0, p2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p2

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Physical density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    if-eq v0, p2, :cond_36

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_36} :catch_37

    .line 173
    :cond_36
    goto :goto_4c

    .line 169
    :catch_37
    move-exception p2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    :goto_4c
    return-void
.end method

.method private printInitialDisplaySize(Ljava/io/PrintWriter;I)V
    .registers 7

    .line 107
    const-string v0, "x"

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 108
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 111
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, p2, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 112
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, p2, v2}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical size: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_58} :catch_59

    .line 121
    :cond_58
    goto :goto_6e

    .line 117
    :catch_59
    move-exception p2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :goto_6e
    return-void
.end method

.method private runDismissKeyguard(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 287
    const/4 p1, 0x0

    return p1
.end method

.method private runDisplayDensity(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    .line 181
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 182
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    .line 183
    return v2

    .line 184
    :cond_f
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 185
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    .line 186
    return v2

    .line 187
    :cond_1b
    const-string p1, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_26

    .line 188
    move p1, v3

    goto :goto_39

    .line 191
    :cond_26
    :try_start_26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2a} :catch_48

    .line 195
    nop

    .line 196
    const/16 v0, 0x48

    if-ge p1, v0, :cond_39

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: density must be >= 72"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    return v3

    .line 202
    :cond_39
    :goto_39
    const/4 v0, -0x2

    if-lez p1, :cond_42

    .line 203
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, v1, p1, v0}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V

    goto :goto_47

    .line 206
    :cond_42
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p1, v1, v0}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    .line 209
    :goto_47
    return v2

    .line 192
    :catch_48
    move-exception p1

    .line 193
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return v3
.end method

.method private runDisplayFoldedArea(Ljava/io/PrintWriter;)I
    .registers 8

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 225
    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printFoldedArea(Ljava/io/PrintWriter;)V

    .line 227
    return v2

    .line 228
    :cond_10
    const-string p1, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 229
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_5e

    .line 231
    :cond_1c
    const-string p1, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 233
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_37

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: area should be LEFT,TOP,RIGHT,BOTTOM"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const/4 p1, -0x1

    return p1

    .line 238
    :cond_37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    .line 239
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 238
    invoke-virtual {v1, v0, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    :goto_5e
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 243
    return v2
.end method

.method private runDisplayOverscan(Ljava/io/PrintWriter;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 249
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v2

    .line 250
    const-string v1, "reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_1a

    .line 251
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_70

    .line 253
    :cond_1a
    const-string v1, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 255
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_44

    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad rectangle arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const/4 p1, -0x1

    return p1

    .line 260
    :cond_44
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 261
    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 262
    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 263
    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 266
    :goto_70
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowManager;->setOverscan(IIIII)V

    .line 267
    return v7
.end method

.method private runDisplayScaling(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 272
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    goto :goto_29

    .line 275
    :cond_17
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    .line 282
    :goto_29
    return v1

    .line 279
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: scaling must be \'auto\' or \'off\'"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    const/4 p1, -0x1

    return p1
.end method

.method private runDisplaySize(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    .line 128
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 129
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    .line 130
    return v2

    .line 131
    :cond_f
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 132
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    .line 133
    return v2

    .line 134
    :cond_1b
    const-string p1, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_26

    .line 135
    move v0, v3

    goto :goto_4a

    .line 137
    :cond_26
    const/16 p1, 0x78

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 138
    if-lez p1, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p1, v4, :cond_37

    goto :goto_74

    .line 142
    :cond_37
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 143
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    :try_start_41
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v0

    .line 146
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v3
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_49} :catch_5a

    .line 150
    nop

    .line 153
    :goto_4a
    if-ltz v0, :cond_54

    if-ltz v3, :cond_54

    .line 154
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p1, v1, v0, v3}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V

    goto :goto_59

    .line 156
    :cond_54
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p1, v1}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    .line 158
    :goto_59
    return v2

    .line 147
    :catch_5a
    move-exception p1

    .line 148
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    return v3

    .line 139
    :cond_74
    :goto_74
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    return v3
.end method

.method private runSetDisplayUserRotation(Ljava/io/PrintWriter;)I
    .registers 6

    .line 308
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 310
    nop

    .line 311
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 313
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 314
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 312
    :cond_1f
    move-object v1, v0

    move v0, v2

    .line 317
    :goto_21
    const-string v3, "free"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 318
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    .line 319
    return v2

    .line 322
    :cond_2f
    const-string v3, "lock"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, -0x1

    if-nez p1, :cond_42

    .line 323
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: lock mode needs to be either free or lock."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return v3

    .line 328
    :cond_42
    if-eqz v1, :cond_4b

    :try_start_44
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_4c

    .line 331
    :catch_49
    move-exception p1

    goto :goto_52

    .line 328
    :cond_4b
    move p1, v2

    .line 329
    :goto_4c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(II)V
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_51} :catch_49

    .line 330
    return v2

    .line 332
    :goto_52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    return v3
.end method

.method private runSetFixToUserRotation(Ljava/io/PrintWriter;)I
    .registers 10

    .line 338
    nop

    .line 339
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 340
    const-string v0, "-d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 342
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move v0, p1

    move-object p1, v7

    goto :goto_1f

    .line 340
    :cond_1e
    move v0, v1

    .line 346
    :goto_1f
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5ff074bf

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_4a

    const v3, 0x10263a7c

    if-eq v2, v3, :cond_40

    const v3, 0x5c13d641

    if-eq v2, v3, :cond_36

    :cond_35
    goto :goto_54

    :cond_36
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v5

    goto :goto_55

    :cond_40
    const-string v2, "disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v6

    goto :goto_55

    :cond_4a
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v1

    goto :goto_55

    :goto_54
    move v2, v4

    :goto_55
    if-eqz v2, :cond_78

    if-eq v2, v6, :cond_76

    if-eq v2, v5, :cond_74

    .line 357
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: expecting enabled, disabled or default, but we get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    return v4

    .line 354
    :cond_74
    nop

    .line 355
    goto :goto_7a

    .line 351
    :cond_76
    nop

    .line 352
    goto :goto_7a

    .line 348
    :cond_78
    nop

    .line 349
    move v6, v5

    .line 362
    :goto_7a
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0, v6}, Lcom/android/server/wm/WindowManagerService;->setRotateForApp(II)V

    .line 363
    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .line 55
    if-nez p1, :cond_7

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 58
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 60
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c0

    :cond_13
    goto :goto_6f

    :sswitch_14
    const-string v2, "scaling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x4

    goto :goto_70

    :sswitch_1e
    const-string v2, "density"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_70

    :sswitch_28
    const-string v2, "overscan"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    goto :goto_70

    :sswitch_32
    const-string v2, "size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_70

    :sswitch_3c
    const-string v2, "dismiss-keyguard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x5

    goto :goto_70

    :sswitch_46
    const-string v2, "folded-area"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    goto :goto_70

    :sswitch_50
    const-string v2, "tracing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x6

    goto :goto_70

    :sswitch_5a
    const-string v2, "set-user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x7

    goto :goto_70

    :sswitch_64
    const-string v2, "set-fix-to-user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x8

    goto :goto_70

    :goto_6f
    move v2, v1

    :goto_70
    packed-switch v2, :pswitch_data_e6

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    goto :goto_a9

    .line 81
    :pswitch_78  #0x8
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetFixToUserRotation(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 79
    :pswitch_7d  #0x7
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetDisplayUserRotation(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 77
    :pswitch_82  #0x6
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowTracing;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result p1

    return p1

    .line 72
    :pswitch_8b  #0x5
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDismissKeyguard(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 70
    :pswitch_90  #0x4
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayScaling(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 68
    :pswitch_95  #0x3
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayOverscan(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 66
    :pswitch_9a  #0x2
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayFoldedArea(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 64
    :pswitch_9f  #0x1
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayDensity(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 62
    :pswitch_a4  #0x0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySize(Ljava/io/PrintWriter;)I

    move-result p1
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_a8} :catch_aa

    return p1

    .line 83
    :goto_a9
    return p1

    .line 85
    :catch_aa
    move-exception p1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    return v1

    :sswitch_data_c0
    .sparse-switch
        -0x772d554f -> :sswitch_64
        -0x4e7d6aeb -> :sswitch_5a
        -0x3f9f2f3e -> :sswitch_50
        -0x14126e26 -> :sswitch_46
        -0xdad5077 -> :sswitch_3c
        0x35e001 -> :sswitch_32
        0x1f977951 -> :sswitch_28
        0x5c8c94e8 -> :sswitch_1e
        0x71e5fb87 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_a4  #00000000
        :pswitch_9f  #00000001
        :pswitch_9a  #00000002
        :pswitch_95  #00000003
        :pswitch_90  #00000004
        :pswitch_8b  #00000005
        :pswitch_82  #00000006
        :pswitch_7d  #00000007
        :pswitch_78  #00000008
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 369
    const-string v1, "Window manager (window) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    const-string v1, "  size [reset|WxH|WdpxHdp] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const-string v1, "    Return or override display size."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    const-string v1, "    width and height in pixels unless suffixed with \'dp\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v1, "  density [reset|DENSITY] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v1, "    Return or override display density."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v1, "  folded-area [reset|LEFT,TOP,RIGHT,BOTTOM]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const-string v1, "    Return or override folded area."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v1, "  overscan [reset|LEFT,TOP,RIGHT,BOTTOM] [-d DISPLAY ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    const-string v1, "    Set overscan area for display."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    const-string v1, "  scaling [off|auto] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v1, "    Set display scaling mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v1, "  dismiss-keyguard"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    const-string v1, "    Dismiss the keyguard, prompting user for auth if necessary."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    const-string v1, "  set-user-rotation [free|lock] [-d DISPLAY_ID] [rotation]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string v1, "    Set user rotation mode and user rotation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string v1, "  set-fix-to-user-rotation [-d DISPLAY_ID] [enabled|disabled]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v1, "    Enable or disable rotating display for app requested orientation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_76

    .line 390
    const-string v1, "  tracing (start | stop)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v1, "    Start or stop window tracing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :cond_76
    return-void
.end method
