.class public Lcom/meizu/settings/UnAcceptableCharChecker;
.super Ljava/lang/Object;
.source "UnAcceptableCharChecker.java"


# static fields
.field private static final charsAmount:I

.field private static mChecher:Lcom/meizu/settings/UnAcceptableCharChecker;

.field private static final mUnAcceptableChar:[C


# instance fields
.field final mEmoji:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 20
    fill-array-data v0, :array_10

    sput-object v0, Lcom/meizu/settings/UnAcceptableCharChecker;->mUnAcceptableChar:[C

    .line 23
    sget-object v0, Lcom/meizu/settings/UnAcceptableCharChecker;->mUnAcceptableChar:[C

    array-length v0, v0

    sput v0, Lcom/meizu/settings/UnAcceptableCharChecker;->charsAmount:I

    return-void

    nop

    :array_10
    .array-data 2
        0x7cs
        0x5cs
        0x2fs
        0x3as
        0x3fs
        0x2as
        0x22s
        0x3cs
        0x3es
        0x25s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[🀀-🏿]|[🐀-🟿]|[☀-⟿]"

    const/16 v1, 0x42

    .line 25
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/UnAcceptableCharChecker;->mEmoji:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static getInstance()Lcom/meizu/settings/UnAcceptableCharChecker;
    .registers 1

    .line 34
    sget-object v0, Lcom/meizu/settings/UnAcceptableCharChecker;->mChecher:Lcom/meizu/settings/UnAcceptableCharChecker;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/meizu/settings/UnAcceptableCharChecker;

    invoke-direct {v0}, Lcom/meizu/settings/UnAcceptableCharChecker;-><init>()V

    sput-object v0, Lcom/meizu/settings/UnAcceptableCharChecker;->mChecher:Lcom/meizu/settings/UnAcceptableCharChecker;

    .line 37
    :cond_b
    sget-object v0, Lcom/meizu/settings/UnAcceptableCharChecker;->mChecher:Lcom/meizu/settings/UnAcceptableCharChecker;

    return-object v0
.end method


# virtual methods
.method public checkEmojiString(Ljava/lang/String;)Z
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/UnAcceptableCharChecker;->mEmoji:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public checkUnAcceptableChar(C)Z
    .registers 4

    const/4 p0, 0x0

    move v0, p0

    .line 41
    :goto_2
    sget v1, Lcom/meizu/settings/UnAcceptableCharChecker;->charsAmount:I

    if-ge v0, v1, :cond_11

    .line 42
    sget-object v1, Lcom/meizu/settings/UnAcceptableCharChecker;->mUnAcceptableChar:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return p0
.end method
