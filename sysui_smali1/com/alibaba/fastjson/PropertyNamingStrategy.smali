.class public final enum Lcom/alibaba/fastjson/PropertyNamingStrategy;
.super Ljava/lang/Enum;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v1, 0x0

    const-string v2, "CamelCase"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x1

    const-string v3, "PascalCase"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 9
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v3, 0x2

    const-string v4, "SnakeCase"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v4, 0x3

    const-string v5, "KebabCase"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 6
    sget-object v5, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v5, v0, v1

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .registers 2

    .line 6
    const-class v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .registers 1

    .line 6
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/PropertyNamingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 13
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x5a

    const/16 v1, 0x41

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_7c

    const/4 v2, 0x2

    if-eq p0, v2, :cond_50

    const/4 v2, 0x3

    if-eq p0, v2, :cond_33

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1a

    return-object p1

    .line 57
    :cond_1a
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-lt p0, v1, :cond_32

    if-gt p0, v0, :cond_32

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 60
    aget-char p1, p0, v3

    add-int/lit8 p1, p1, 0x20

    int-to-char p1, p1

    aput-char p1, p0, v3

    .line 61
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    :cond_32
    return-object p1

    .line 47
    :cond_33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_4f

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_4f

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 50
    aget-char p1, p0, v3

    add-int/lit8 p1, p1, -0x20

    int-to-char p1, p1

    aput-char p1, p0, v3

    .line 51
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    :cond_4f
    return-object p1

    .line 31
    :cond_50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    :goto_55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_77

    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v1, :cond_71

    if-gt v2, v0, :cond_71

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    if-lez v3, :cond_6d

    const/16 v4, 0x2d

    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_6d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 41
    :cond_71
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 44
    :cond_77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_7c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    :goto_81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_a3

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v1, :cond_9d

    if-gt v2, v0, :cond_9d

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    if-lez v3, :cond_99

    const/16 v4, 0x5f

    .line 21
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    :cond_99
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 25
    :cond_9d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 28
    :cond_a3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
