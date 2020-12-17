.class final Lcom/meizu/pps/observer/NetUeventManager$Parser;
.super Ljava/lang/Object;
.source "NetUeventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/pps/observer/NetUeventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parser"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static explain(ILjava/lang/String;)[I
    .registers 8
    .param p0, "type"  # I
    .param p1, "speed"  # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 48
    const-string v1, ":|,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "arraySpeed":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 50
    .local v2, "arrayInt":[I
    aput p0, v2, v0

    .line 52
    move v3, v0

    .local v3, "i":I
    :goto_11
    :try_start_11
    array-length v4, v1

    if-ge v3, v4, :cond_25

    .line 54
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 55
    .local v4, "b":I
    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v5
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_22} :catch_27

    .line 52
    .end local v4  # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 60
    .end local v3  # "i":I
    :cond_25
    nop

    .line 61
    return-object v2

    .line 57
    :catch_27
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 59
    new-array v0, v0, [I

    return-object v0

    .line 63
    .end local v1  # "arraySpeed":[Ljava/lang/String;
    .end local v2  # "arrayInt":[I
    .end local v3  # "e":Ljava/lang/NumberFormatException;
    :cond_2e
    new-array v0, v0, [I

    return-object v0
.end method
