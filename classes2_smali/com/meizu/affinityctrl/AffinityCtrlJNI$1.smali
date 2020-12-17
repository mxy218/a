.class Lcom/meizu/affinityctrl/AffinityCtrlJNI$1;
.super Ljava/lang/Object;
.source "AffinityCtrlJNI.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/affinityctrl/AffinityCtrlJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6
    .param p1, "pathname"  # Ljava/io/File;

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "path":Ljava/lang/String;
    const-string v1, "cpu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 123
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 125
    return v2

    .line 123
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 128
    .end local v1  # "i":I
    :cond_22
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_24
    return v2
.end method
